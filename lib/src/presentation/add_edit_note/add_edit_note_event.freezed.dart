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

  changeColor changeColor(int color) {
    return changeColor(
      color,
    );
  }

  saveNote saveNote(int? id, String title, String content) {
    return saveNote(
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
    required TResult Function(changeColor value) changeColor,
    required TResult Function(saveNote value) saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(changeColor value)? changeColor,
    TResult Function(saveNote value)? saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(changeColor value)? changeColor,
    TResult Function(saveNote value)? saveNote,
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
abstract class $changeColorCopyWith<$Res> {
  factory $changeColorCopyWith(
          changeColor value, $Res Function(changeColor) then) =
      _$changeColorCopyWithImpl<$Res>;
  $Res call({int color});
}

/// @nodoc
class _$changeColorCopyWithImpl<$Res>
    extends _$AddEditNoteEventCopyWithImpl<$Res>
    implements $changeColorCopyWith<$Res> {
  _$changeColorCopyWithImpl(
      changeColor _value, $Res Function(changeColor) _then)
      : super(_value, (v) => _then(v as changeColor));

  @override
  changeColor get _value => super._value as changeColor;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(changeColor(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$changeColor implements changeColor {
  const _$changeColor(this.color);

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
            other is changeColor &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  $changeColorCopyWith<changeColor> get copyWith =>
      _$changeColorCopyWithImpl<changeColor>(this, _$identity);

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
    required TResult Function(changeColor value) changeColor,
    required TResult Function(saveNote value) saveNote,
  }) {
    return changeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(changeColor value)? changeColor,
    TResult Function(saveNote value)? saveNote,
  }) {
    return changeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(changeColor value)? changeColor,
    TResult Function(saveNote value)? saveNote,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(this);
    }
    return orElse();
  }
}

abstract class changeColor implements AddEditNoteEvent {
  const factory changeColor(int color) = _$changeColor;

  int get color;
  @JsonKey(ignore: true)
  $changeColorCopyWith<changeColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $saveNoteCopyWith<$Res> {
  factory $saveNoteCopyWith(saveNote value, $Res Function(saveNote) then) =
      _$saveNoteCopyWithImpl<$Res>;
  $Res call({int? id, String title, String content});
}

/// @nodoc
class _$saveNoteCopyWithImpl<$Res> extends _$AddEditNoteEventCopyWithImpl<$Res>
    implements $saveNoteCopyWith<$Res> {
  _$saveNoteCopyWithImpl(saveNote _value, $Res Function(saveNote) _then)
      : super(_value, (v) => _then(v as saveNote));

  @override
  saveNote get _value => super._value as saveNote;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(saveNote(
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

class _$saveNote implements saveNote {
  const _$saveNote(this.id, this.title, this.content);

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
            other is saveNote &&
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
  $saveNoteCopyWith<saveNote> get copyWith =>
      _$saveNoteCopyWithImpl<saveNote>(this, _$identity);

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
    required TResult Function(changeColor value) changeColor,
    required TResult Function(saveNote value) saveNote,
  }) {
    return saveNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(changeColor value)? changeColor,
    TResult Function(saveNote value)? saveNote,
  }) {
    return saveNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(changeColor value)? changeColor,
    TResult Function(saveNote value)? saveNote,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(this);
    }
    return orElse();
  }
}

abstract class saveNote implements AddEditNoteEvent {
  const factory saveNote(int? id, String title, String content) = _$saveNote;

  int? get id;
  String get title;
  String get content;
  @JsonKey(ignore: true)
  $saveNoteCopyWith<saveNote> get copyWith =>
      throw _privateConstructorUsedError;
}
