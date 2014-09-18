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

## ScrollView

We will often need to use scrollview to scroll the content up to avoid having the keyboard cover the content when it pops up. This requires some calculation to scroll just the right amount. These projects are to allow experimentation with how scrolling is best done. E.g. should we use `setContentOffset` or `scrollRectToVisible`.

When using scrollview keep in mind:

1. A scrollview has a frame which is specifies the dimensions of the area you can always see. However the content area will usually be much larger.
2. Specify the frame dimensions in interface builder.
3. Specify content size in code under `viewDidLayoutSubviews`. A trick is to size the scroll view to show everything and make note of that size. Specify this size as `contentSize`. 

[miketableview]: https://www.mikeash.com/pyblog/friday-qa-2013-02-22-lets-build-uitableview.html