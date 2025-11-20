// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GenerateEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateEvent()';
}


}

/// @nodoc
class $GenerateEventCopyWith<$Res>  {
$GenerateEventCopyWith(GenerateEvent _, $Res Function(GenerateEvent) __);
}


/// Adds pattern-matching-related methods to [GenerateEvent].
extension GenerateEventPatterns on GenerateEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PromptChanged value)?  promptChanged,TResult Function( GeneratePressed value)?  generatePressed,TResult Function( TryAnotherPressed value)?  tryAnotherPressed,TResult Function( RetryPressed value)?  retryPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PromptChanged() when promptChanged != null:
return promptChanged(_that);case GeneratePressed() when generatePressed != null:
return generatePressed(_that);case TryAnotherPressed() when tryAnotherPressed != null:
return tryAnotherPressed(_that);case RetryPressed() when retryPressed != null:
return retryPressed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PromptChanged value)  promptChanged,required TResult Function( GeneratePressed value)  generatePressed,required TResult Function( TryAnotherPressed value)  tryAnotherPressed,required TResult Function( RetryPressed value)  retryPressed,}){
final _that = this;
switch (_that) {
case PromptChanged():
return promptChanged(_that);case GeneratePressed():
return generatePressed(_that);case TryAnotherPressed():
return tryAnotherPressed(_that);case RetryPressed():
return retryPressed(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PromptChanged value)?  promptChanged,TResult? Function( GeneratePressed value)?  generatePressed,TResult? Function( TryAnotherPressed value)?  tryAnotherPressed,TResult? Function( RetryPressed value)?  retryPressed,}){
final _that = this;
switch (_that) {
case PromptChanged() when promptChanged != null:
return promptChanged(_that);case GeneratePressed() when generatePressed != null:
return generatePressed(_that);case TryAnotherPressed() when tryAnotherPressed != null:
return tryAnotherPressed(_that);case RetryPressed() when retryPressed != null:
return retryPressed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value)?  promptChanged,TResult Function()?  generatePressed,TResult Function()?  tryAnotherPressed,TResult Function()?  retryPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PromptChanged() when promptChanged != null:
return promptChanged(_that.value);case GeneratePressed() when generatePressed != null:
return generatePressed();case TryAnotherPressed() when tryAnotherPressed != null:
return tryAnotherPressed();case RetryPressed() when retryPressed != null:
return retryPressed();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value)  promptChanged,required TResult Function()  generatePressed,required TResult Function()  tryAnotherPressed,required TResult Function()  retryPressed,}) {final _that = this;
switch (_that) {
case PromptChanged():
return promptChanged(_that.value);case GeneratePressed():
return generatePressed();case TryAnotherPressed():
return tryAnotherPressed();case RetryPressed():
return retryPressed();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value)?  promptChanged,TResult? Function()?  generatePressed,TResult? Function()?  tryAnotherPressed,TResult? Function()?  retryPressed,}) {final _that = this;
switch (_that) {
case PromptChanged() when promptChanged != null:
return promptChanged(_that.value);case GeneratePressed() when generatePressed != null:
return generatePressed();case TryAnotherPressed() when tryAnotherPressed != null:
return tryAnotherPressed();case RetryPressed() when retryPressed != null:
return retryPressed();case _:
  return null;

}
}

}

/// @nodoc


class PromptChanged implements GenerateEvent {
  const PromptChanged(this.value);
  

 final  String value;

/// Create a copy of GenerateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromptChangedCopyWith<PromptChanged> get copyWith => _$PromptChangedCopyWithImpl<PromptChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromptChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'GenerateEvent.promptChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $PromptChangedCopyWith<$Res> implements $GenerateEventCopyWith<$Res> {
  factory $PromptChangedCopyWith(PromptChanged value, $Res Function(PromptChanged) _then) = _$PromptChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$PromptChangedCopyWithImpl<$Res>
    implements $PromptChangedCopyWith<$Res> {
  _$PromptChangedCopyWithImpl(this._self, this._then);

  final PromptChanged _self;
  final $Res Function(PromptChanged) _then;

/// Create a copy of GenerateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(PromptChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GeneratePressed implements GenerateEvent {
  const GeneratePressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratePressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateEvent.generatePressed()';
}


}




/// @nodoc


class TryAnotherPressed implements GenerateEvent {
  const TryAnotherPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TryAnotherPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateEvent.tryAnotherPressed()';
}


}




/// @nodoc


class RetryPressed implements GenerateEvent {
  const RetryPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetryPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateEvent.retryPressed()';
}


}




// dart format on
