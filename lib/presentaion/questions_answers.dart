class BasicQuestions {}

///Q.  What’s the difference between [hot_reload] and [hot_restart]?
///A : [Hot_reload] maintains the app state while updating the UI almost instantaneously.
///    [Hot_restart], by comparison, takes a little longer because it resets the app state to its initial conditions before updating the UI

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

class InterMediateQuestions {}

/// Q.  What is the event loop, and what is its relationship to isolates?
/// A.  Dart operates on a single-threaded model called an isolate,
///     where each isolate runs independently without sharing memory.
///     Isolates communicate through messages sent over ports.
///     They have event loops that schedule asynchronous tasks on two queues:
/// [microtask] queue and [event_queue].
/// [Microtasks] run first and are internal tasks.
///     Async methods don't run on separate threads; expensive computations should be run on separate isolates.
///     the microtask queue handles high-priority tasks such as Future callbacks and async operations, while the event queue manages tasks related to I/O operations, timers, and user interactions. The event loop schedules and processes tasks from both queues, ensuring proper execution of asynchronous operations in Dart

/// Q.  How do you reduce widget rebuild?
/// A.  1.The first is to refactor a large widget tree into smaller individual widgets, each with its own [build] method.
///     2.Whenever possible, use the [const] constructor, because this will tell Flutter that it doesn't need to rebuild the widget.
///     3.Keep the subtree of a stateful widget as small as possible. If a stateful widget needs to have a widget subtree under it, create a custom widget for the stateful widget and give it a [child] parameter.

/// Q.  What is BuildContext and how is it useful?
/// A.  [BuildContext] is actually the widget's element in the Element tree — so every widget has its own [BuildContext].

/// Q.  How do you talk to native code from within a Flutter app?
/// A.  Normally you don't need to talk to native code because the Flutter framework or third party plugins handle it.
/// One type of platform channel is a [method_channel].Data is serialized on the Dart side and then sent to the native side. You can write native code to interact with the platform before sending a serialized message back.
///
/// The second type of platform channel is the [event_channel], which you use to send a stream of data from the native platform back to Flutter. This is useful for monitoring sensor data.

/// Q.  What types of tests can you perform?
/// A.  [unit_tests], [widget_tests] and [integration_tests].[golden_test]
/// [unit_test] => checking the validity of your business logic
/// [widget_test] => making sure UI widgets have the components that you expect them to.
/// [integration_test] => check that your app is working as a whole
/// [golden_test] => an image of a widget or screen and check to see that the actual widget matches it.
class ClassName {}
