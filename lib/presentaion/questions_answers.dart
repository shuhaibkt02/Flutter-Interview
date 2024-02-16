///Q.  What’s the difference between [hot_reload] and [hot_restart]?
///A : [Hot_reload] maintains the app state while updating the UI almost instantaneously.
///    [Hot_restart], by comparison, takes a little longer because it resets the app state to its initial conditions before updating the UI

library;

/// Q. :What is the difference between [StatelessWidget] and [StatefulWidget]?
/// A. :[StatelessWidget] is an immutable class that acts as a blueprint for some part of the UI layout.
///     has no [State].
///     [StatefulWidget] is also immutable, but it’s coupled with a State object that allows you to rebuild
///      the widget with new values whenever calling setState()

/// Q. :What is the difference between [WidgetsApp] and [MaterialApp]?
/// A. :[WidgetsApp] provides basic navigation. Together with the widgets library, it includes many of the foundational widgets that Flutter uses.
///     [MaterialApp] and the corresponding material library is a layer built on top of WidgetsApp and the widgets library.

/// Q.  :Can you nest a [Scaffold]? Why or why not?
/// A.  :Yes, [Scaffold] is a widget, so we can nest as many as we like.

/// Q.  :When is it appropriate to use [packages], [plugins] or third-party dependencies?
/// A.  :[Packages] and [plugins] are great for saving you time and work.
///      there’s also a danger of being too reliant on third party packages. They can break, have bugs or even be abandoned
class Questions {}
