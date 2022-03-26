// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_edit_note_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddEditNoteEventTearOff {
  const _$AddEditNoteEventTearOff();

  _changeColor changeColor(int color) {
    return _changeColor(
      color,
    );
  }

  _saveNote saveNote(int? id, String title, String content) {
    return _saveNote(
      id,
      title,
      content,
    );
  }
}

/// @nodoc
const $AddEditNoteEvent = _$AddEditNoteEventTearOff();

/// @nodoc
mixin _$AddEditNoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int color) changeColor,
    required TResult Function(int? id, String title, String content) saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int color)? changeColor,
    TResult Function(int? id, String title, String content)? saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int color)? changeColor,
    TResult Function(int? id, String title, String content)? saveNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeColor value) changeColor,
    required TResult Function(_saveNote value) saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_changeColor value)? changeColor,
    TResult Function(_saveNote value)? saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeColor value)? changeColor,
    TResult Function(_saveNote value)? saveNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditNoteEventCopyWith<$Res> {
  factory $AddEditNoteEventCopyWith(
          AddEditNoteEvent value, $Res Function(AddEditNoteEvent) then) =
      _$AddEditNoteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddEditNoteEventCopyWithImpl<$Res>
    implements $AddEditNoteEventCopyWith<$Res> {
  _$AddEditNoteEventCopyWithImpl(this._value, this._then);

  final AddEditNoteEvent _value;
  // ignore: unused_field
  final $Res Function(AddEditNoteEvent) _then;
}

/// @nodoc
abstract class _$changeColorCopyWith<$Res> {
  factory _$changeColorCopyWith(
          _changeColor value, $Res Function(_changeColor) then) =
      __$changeColorCopyWithImpl<$Res>;
  $Res call({int color});
}

/// @nodoc
class __$changeColorCopyWithImpl<$Res>
    extends _$AddEditNoteEventCopyWithImpl<$Res>
    implements _$changeColorCopyWith<$Res> {
  __$changeColorCopyWithImpl(
      _changeColor _value, $Res Function(_changeColor) _then)
      : super(_value, (v) => _then(v as _changeColor));

  @override
  _changeColor get _value => super._value as _changeColor;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_changeColor(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_changeColor implements _changeColor {
  const _$_changeColor(this.color);

  @override
  final int color;

  @override
  String toString() {
    return 'AddEditNoteEvent.changeColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _changeColor &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$changeColorCopyWith<_changeColor> get copyWith =>
      __$changeColorCopyWithImpl<_changeColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int color) changeColor,
    required TResult Function(int? id, String title, String content) saveNote,
  }) {
    return changeColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int color)? changeColor,
    TResult Function(int? id, String title, String content)? saveNote,
  }) {
    return changeColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int color)? changeColor,
    TResult Function(int? id, String title, String content)? saveNote,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeColor value) changeColor,
    required TResult Function(_saveNote value) saveNote,
  }) {
    return changeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_changeColor value)? changeColor,
    TResult Function(_saveNote value)? saveNote,
  }) {
    return changeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeColor value)? changeColor,
    TResult Function(_saveNote value)? saveNote,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(this);
    }
    return orElse();
  }
}

abstract class _changeColor implements AddEditNoteEvent {
  const factory _changeColor(int color) = _$_changeColor;

  int get color;
  @JsonKey(ignore: true)
  _$changeColorCopyWith<_changeColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$saveNoteCopyWith<$Res> {
  factory _$saveNoteCopyWith(_saveNote value, $Res Function(_saveNote) then) =
      __$saveNoteCopyWithImpl<$Res>;
  $Res call({int? id, String title, String content});
}

/// @nodoc
class __$saveNoteCopyWithImpl<$Res> extends _$AddEditNoteEventCopyWithImpl<$Res>
    implements _$saveNoteCopyWith<$Res> {
  __$saveNoteCopyWithImpl(_saveNote _value, $Res Function(_saveNote) _then)
      : super(_value, (v) => _then(v as _saveNote));

  @override
  _saveNote get _value => super._value as _saveNote;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_saveNote(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_saveNote implements _saveNote {
  const _$_saveNote(this.id, this.title, this.content);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'AddEditNoteEvent.saveNote(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _saveNote &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$saveNoteCopyWith<_saveNote> get copyWith =>
      __$saveNoteCopyWithImpl<_saveNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int color) changeColor,
    required TResult Function(int? id, String title, String content) saveNote,
  }) {
    return saveNote(id, title, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int color)? changeColor,
    TResult Function(int? id, String title, String content)? saveNote,
  }) {
    return saveNote?.call(id, title, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int color)? changeColor,
    TResult Function(int? id, String title, String content)? saveNote,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(id, title, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeColor value) changeColor,
    required TResult Function(_saveNote value) saveNote,
  }) {
    return saveNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_changeColor value)? changeColor,
    TResult Function(_saveNote value)? saveNote,
  }) {
    return saveNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeColor value)? changeColor,
    TResult Function(_saveNote value)? saveNote,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(this);
    }
    return orElse();
  }
}

abstract class _saveNote implements AddEditNoteEvent {
  const factory _saveNote(int? id, String title, String content) = _$_saveNote;

  int? get id;
  String get title;
  String get content;
  @JsonKey(ignore: true)
  _$saveNoteCopyWith<_saveNote> get copyWith =>
      throw _privateConstructorUsedError;
}
