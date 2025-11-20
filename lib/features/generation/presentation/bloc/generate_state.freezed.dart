// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GenerateState {

 String get prompt; GenerateStatus get status; String? get imageToken;
/// Create a copy of GenerateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateStateCopyWith<GenerateState> get copyWith => _$GenerateStateCopyWithImpl<GenerateState>(this as GenerateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateState&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.status, status) || other.status == status)&&(identical(other.imageToken, imageToken) || other.imageToken == imageToken));
}


@override
int get hashCode => Object.hash(runtimeType,prompt,status,imageToken);

@override
String toString() {
  return 'GenerateState(prompt: $prompt, status: $status, imageToken: $imageToken)';
}


}

/// @nodoc
abstract mixin class $GenerateStateCopyWith<$Res>  {
  factory $GenerateStateCopyWith(GenerateState value, $Res Function(GenerateState) _then) = _$GenerateStateCopyWithImpl;
@useResult
$Res call({
 String prompt, GenerateStatus status, String? imageToken
});




}
/// @nodoc
class _$GenerateStateCopyWithImpl<$Res>
    implements $GenerateStateCopyWith<$Res> {
  _$GenerateStateCopyWithImpl(this._self, this._then);

  final GenerateState _self;
  final $Res Function(GenerateState) _then;

/// Create a copy of GenerateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prompt = null,Object? status = null,Object? imageToken = freezed,}) {
  return _then(_self.copyWith(
prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GenerateStatus,imageToken: freezed == imageToken ? _self.imageToken : imageToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GenerateState].
extension GenerateStatePatterns on GenerateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerateState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerateState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerateState value)  $default,){
final _that = this;
switch (_that) {
case _GenerateState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerateState value)?  $default,){
final _that = this;
switch (_that) {
case _GenerateState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String prompt,  GenerateStatus status,  String? imageToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerateState() when $default != null:
return $default(_that.prompt,_that.status,_that.imageToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String prompt,  GenerateStatus status,  String? imageToken)  $default,) {final _that = this;
switch (_that) {
case _GenerateState():
return $default(_that.prompt,_that.status,_that.imageToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String prompt,  GenerateStatus status,  String? imageToken)?  $default,) {final _that = this;
switch (_that) {
case _GenerateState() when $default != null:
return $default(_that.prompt,_that.status,_that.imageToken);case _:
  return null;

}
}

}

/// @nodoc


class _GenerateState implements GenerateState {
  const _GenerateState({this.prompt = '', this.status = GenerateStatus.idle, this.imageToken});
  

@override@JsonKey() final  String prompt;
@override@JsonKey() final  GenerateStatus status;
@override final  String? imageToken;

/// Create a copy of GenerateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerateStateCopyWith<_GenerateState> get copyWith => __$GenerateStateCopyWithImpl<_GenerateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerateState&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.status, status) || other.status == status)&&(identical(other.imageToken, imageToken) || other.imageToken == imageToken));
}


@override
int get hashCode => Object.hash(runtimeType,prompt,status,imageToken);

@override
String toString() {
  return 'GenerateState(prompt: $prompt, status: $status, imageToken: $imageToken)';
}


}

/// @nodoc
abstract mixin class _$GenerateStateCopyWith<$Res> implements $GenerateStateCopyWith<$Res> {
  factory _$GenerateStateCopyWith(_GenerateState value, $Res Function(_GenerateState) _then) = __$GenerateStateCopyWithImpl;
@override @useResult
$Res call({
 String prompt, GenerateStatus status, String? imageToken
});




}
/// @nodoc
class __$GenerateStateCopyWithImpl<$Res>
    implements _$GenerateStateCopyWith<$Res> {
  __$GenerateStateCopyWithImpl(this._self, this._then);

  final _GenerateState _self;
  final $Res Function(_GenerateState) _then;

/// Create a copy of GenerateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prompt = null,Object? status = null,Object? imageToken = freezed,}) {
  return _then(_GenerateState(
prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GenerateStatus,imageToken: freezed == imageToken ? _self.imageToken : imageToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
