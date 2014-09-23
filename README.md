# iOS Example Projects

This is my collection of small projects which are intended to show how one uses a lot of common and less common stuff in iOS. iOS Development contains so many APIs and there are always so many changes it is hard to both stay up to date and remember all the things you've learned when you need to use them 3 months later.

My idea with these projects is to put in example's of how to do things when I've learned them so that I can quickly use them as a reference when I need to do this again. Thus I will try to put a lot of comments in the source code on why things are the way they are.

# Overview of Projects

## TableView

The `UITableView`, `UITableViewCell` classes and coresponding delegate and data source protocols are some of the most important classes to use in iOS development. You really need to have a firm grasp on how these works and what you can and can't do with them.

To get a good understanding of how it works look at Mik Ash's [blog post about building a UITableView][miketableview].

Stuff to remember about table view:

1. Cells don't know their height. You said a standard height on the table itself or implement the delegates `(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath`.

2. You can only register classes and Nib's on cell identifiers. If you need more customization of a standard class allocate the `UITableViewCell` yourself in `(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath`

3. Not only does the sections have *headers* and *footers*, but the whole tableview itself does as well: `tableHeaderView` and `tableFooterView`. Both `UIView` properties.

### Implementing Settings style tableview

The settings app typically has lots of rows with labels and text fields. The *SettingsPage* project demonstrates how you can make this work using a *Storyboard*. It shows how you can edit a textfield by tapping anywhere in tableview cell.

It also shows how to load a particular storyboard because I think using just one storyboard is extremely inflexible and often just requires more coding.  


## ScrollView

We will often need to use scrollview to scroll the content up to avoid having the keyboard cover the content when it pops up. This requires some calculation to scroll just the right amount. These projects are to allow experimentation with how scrolling is best done. E.g. should we use `setContentOffset` or `scrollRectToVisible`.

When using scrollview keep in mind:

1. A scrollview has a frame which is specifies the dimensions of the area you can always see. However the content area will usually be much larger.
2. Specify the frame dimensions in interface builder.
3. Specify content size in code under `viewDidLayoutSubviews`. A trick is to size the scroll view to show everything and make note of that size. Specify this size as `contentSize`. 

### Scrolling to active textfield automatically

Cocoa is actually cleverer than you think. If you make sure the `contentSize` covers the area under the keyboard while the `frame` of the scrollview is just the area above the keyboard then the scrollview will automatically scroll to show active textfield.

### Alternative using Autolayout

Scroll view can be tricky to deal with when you have to handle landscape and portrait mode as well as different screen sizes. So an alternative way to do this is to use Autolayout instead. A way to do this is demonstrated in *KeyboardPopupAutolayout*.

The basic idea is that you create an `IBOutlet` to a constraint that decides how far down all your UI is placed. Then when the keyboard pops up you update this constraint to push the whole UI up. E.g.: 

	let info = notification.userInfo
    if let keyboardFrame: NSValue = info?[UIKeyboardFrameBeginUserInfoKey] as? NSValue {
        let keyboardSize = keyboardFrame.CGRectValue().size
        
        bottomConstraint.constant = keyboardSize.height + uriField.frame.height
        view.layoutIfNeeded()
    }

[miketableview]: https://www.mikeash.com/pyblog/friday-qa-2013-02-22-lets-build-uitableview.html