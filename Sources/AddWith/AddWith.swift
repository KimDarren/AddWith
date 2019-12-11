//  MIT License
//
//  Copyright (c) 2017 KIM TAE JUN (korean.darren@gmail.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

#if os(macOS)
import AppKit
public typealias View = NSView
#elseif os(iOS) || os(tvOS) || os(watchOS)
import UIKit
public typealias View = UIView
#endif

public protocol AddWith {}

extension AddWith where Self: View {

  /// Add views to the end of the receiver’s list of subviews.
  /// This method establishes a strong reference to view and sets its next responder to the receiver, which is its new superview.
  /// Views can have only one superview. If view already has a superview and that view is not the receiver, this method removes the previous superview before making the receiver its new superview.
  ///
  ///     self.view.add(
  ///       self.titleLabel,
  ///       self.descriptionLabel,
  ///       self.imageView
  ///     )
  ///
  /// - Parameter subviews: The collection of views to be added. After being added, this views appear on top of any other subviews.

  public func add(_ subviews: [View]) {
    subviews.forEach {
      self.addSubview($0)
    }
  }


  /// Add views to the end of the receiver’s list of subviews.
  /// This method establishes a strong reference to view and sets its next responder to the receiver, which is its new superview.
  /// Views can have only one superview. If view already has a superview and that view is not the receiver, this method removes the previous superview before making the receiver its new superview.
  ///
  /// - Parameter subviews: The collection of views to be added. After being added, this views appear on top of any other subviews.

  public func add(_ subviews: View...) {
    self.add(subviews)
  }


  /// Add views to the end of the receiver's list of subviews, and return the receiver.
  ///
  ///     self.scrollView.add(
  ///       self.contentContainer.with(
  ///         self.descriptionLabel
  ///         self.imageView
  ///       )
  ///     )
  ///
  /// - Parameter subviews: The collection of views to be added. After being added, this views appear on top of any other subviews.
  /// - Returns: Receiver, with new subviews.

  public func with(_ subviews: View...) -> Self {
    self.add(subviews)
    return self
  }

  public func with(_ subviews: [View]) -> Self {
    self.add(subviews)
    return self
  }

  public func with(_ subviews: [View]...) -> Self {
    return self.with(subviews.flatMap { $0 })
  }

}

extension View: AddWith {}
