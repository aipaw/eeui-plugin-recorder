# 录音机

## 安装

```shell script
eeui plugin install https://github.com/aipaw/eeui-plugin-recorder
```

## 卸载

```shell script
eeui plugin uninstall https://github.com/aipaw/eeui-plugin-recorder
```

## 引用

```js
const recorder = app.requireModule("eeui/recorder");
```

### start(options, callback) 开始录音

#### 参数

1.  `options` (Object)
    *   `channel` (String) (`stereo`, `mono`, default: `stereo`)

    *   `quality` (String) (`low` [8000Hz, 8bit] | `standard` [22050Hz, 16bit] | `high` [44100Hz, 16bit], default: `standard`)

2.  [`callback`] (Function)

#### 示例

```
recorder.start({
    channel: `mono`
}, () => {
    console.log('started')
})
```

* * *

### pause(callback) 暂停录音

#### 参数

1.  [`callback`] (Function)

#### 示例

```
recorder.pause()
```

```
recorder.pause(() => {
    console.log('paused')
})
```

* * *

### stop(callback) 结束录音

#### 参数

1.  [`callback`] (Function)

#### 返回

1.  `result` (Object)
    *   `path` (String)

#### 示例

```
recorder.stop((ret) => {
    console.log(ret.path)
})
```

> format: "aac" (iOS) / "wav" (Android)

* * *

> **Error**<br/>
> RECORDER_INTERNAL_ERROR<br/>
> RECORD_AUDIO_PERMISSION_DENIED<br/>
> RECORD_AUDIO_INVALID_ARGUMENT<br/>
> RECORDER_BUSY<br/>
> RECORDER_NOT_STARTED
