.class public Lcom/samsung/android/camera/effect/SecMultiProcessor;
.super Ljava/lang/Object;
.source "SecMultiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;,
        Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;
    }
.end annotation


# static fields
.field public static final MULTI_RECORDING_VIEWTYPE_PIP:I = 0x1

.field public static final MULTI_RECORDING_VIEWTYPE_SPLIT:I = 0x0

.field private static final SEC_EFFECT_PROCESSOR_MSG_INFO:I = 0x1

.field private static final SEC_EFFECT_PROCESSOR_MSG_SNAP_IMAGE:I = 0x3

.field private static final SEC_EFFECT_PROCESSOR_MSG_STILL_IMAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SecMultiProcessor"

.field public static final TYPE_IMG_FORMAT_HEIF:I = 0x1

.field public static final TYPE_IMG_FORMAT_JPEG:I = 0x0

.field public static final TYPE_PIP_VISIBILITY_INVISIBLE:I = 0x0

.field public static final TYPE_PIP_VISIBILITY_VISIBLE:I = 0x1

.field public static final TYPE_SURFACE_LANDSCAPE:I = 0x0

.field public static final TYPE_SURFACE_PORTRAIT:I = 0x1

.field public static final TYPE_TRANSFORM_FLIP_H:I = 0x1

.field public static final TYPE_TRANSFORM_FLIP_V:I = 0x2

.field public static final TYPE_TRANSFORM_ROT_180:I = 0x3

.field public static final TYPE_TRANSFORM_ROT_270:I = 0x7

.field public static final TYPE_TRANSFORM_ROT_90:I = 0x4

.field public static final TYPE_USE_INPUT_SURFACE:I = 0x0

.field public static final TYPE_USE_PREVIEW_DATA:I = 0x1


# instance fields
.field private mCameraContext:Landroid/content/Context;

.field private mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

.field private mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

.field private mImgFormat:I

.field private mIsProcessing:Z

.field private mNativeContext:J

.field private final mPreviewType:I

.field private mPreviewWindowHeight:I

.field private mPreviewWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "camera_effect_processor_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z

    const/4 v2, 0x1

    .line 5
    iput v2, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowHeight:I

    .line 6
    iput v2, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowWidth:I

    const-string v2, "SECIMAGING"

    const-string v3, "aar version : 1.2.3.5"

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 13
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    .line 14
    :goto_0
    iput v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewType:I

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setup(Ljava/lang/Object;I)V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z

    const/4 v1, 0x1

    .line 55
    iput v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowHeight:I

    .line 56
    iput v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowWidth:I

    const-string v1, "SECIMAGING"

    const-string v2, "aar version : 1.2.3.5"

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    .line 59
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 63
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    .line 64
    :goto_0
    iput p2, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewType:I

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setup(Ljava/lang/Object;I)V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/os/Looper;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    .line 86
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z

    const/4 v1, 0x1

    .line 88
    iput v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowHeight:I

    .line 89
    iput v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowWidth:I

    const-string v1, "SECIMAGING"

    const-string v2, "aar version : 1.2.3.5"

    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    if-eqz p4, :cond_0

    .line 92
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, p4}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 94
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, p4}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 96
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, p4}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 97
    :cond_2
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    .line 98
    :goto_0
    iput p2, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewType:I

    .line 99
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p4, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setup(Ljava/lang/Object;I)V

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "processor,transform="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setProcessorParameter(Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z

    const/4 v1, 0x1

    .line 71
    iput v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowHeight:I

    .line 72
    iput v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowWidth:I

    const-string v1, "SECIMAGING"

    const-string v2, "aar version : 1.2.3.5"

    .line 73
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    if-eqz p3, :cond_0

    .line 75
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 77
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 79
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 80
    :cond_2
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    .line 81
    :goto_0
    iput p2, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewType:I

    .line 82
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setup(Ljava/lang/Object;I)V

    .line 83
    iput-object p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z

    const/4 v2, 0x1

    .line 21
    iput v2, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowHeight:I

    .line 22
    iput v2, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowWidth:I

    const-string v2, "SECIMAGING"

    const-string v3, "aar version : 1.2.3.5"

    .line 23
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    if-eqz p2, :cond_0

    .line 25
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 27
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 29
    new-instance v0, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 30
    :cond_2
    iput-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    .line 31
    :goto_0
    iput v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewType:I

    .line 32
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setup(Ljava/lang/Object;I)V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/res/AssetManager;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 35
    iput-object p3, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z

    const/4 v1, 0x1

    .line 38
    iput v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowHeight:I

    .line 39
    iput v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowWidth:I

    const-string v1, "SECIMAGING"

    const-string v2, "aar version : 1.2.3.5"

    .line 40
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p3, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    if-eqz p2, :cond_0

    .line 42
    new-instance p3, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {p3, p0, p0, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 44
    new-instance p3, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {p3, p0, p0, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 46
    new-instance p3, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-direct {p3, p0, p0, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;-><init>(Lcom/samsung/android/camera/effect/SecMultiProcessor;Lcom/samsung/android/camera/effect/SecMultiProcessor;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    goto :goto_0

    .line 47
    :cond_2
    iput-object p3, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    .line 48
    :goto_0
    iput v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewType:I

    .line 49
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setup(Ljava/lang/Object;I)V

    .line 50
    iput-object p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mCameraContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/camera/effect/SecMultiProcessor;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/android/camera/effect/SecMultiProcessor;)Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/camera/effect/SecMultiProcessor;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mImgFormat:I

    return p0
.end method

.method private getProcessorPreviewType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewType:I

    return p0
.end method

.method private native native_changeViewMode(I)V
.end method

.method private native native_frontRearSwitch()V
.end method

.method private native native_getPreviewWindowHeight()I
.end method

.method private native native_getPreviewWindowWidth()I
.end method

.method private static native native_init()V
.end method

.method private native native_initialize()V
.end method

.method private native native_release()V
.end method

.method private native native_setCameraMode(I)V
.end method

.method private native native_setInputSurfaceWithId(Ljava/lang/Object;II)V
.end method

.method private native native_setOutputSurface(Ljava/lang/Object;)V
.end method

.method private native native_setOutputSurfaceType(Ljava/lang/Object;I)V
.end method

.method private native native_setPipInfo(FFFF)V
.end method

.method private native native_setPipRect(FF)V
.end method

.method private native native_setPipVisibility(I)V
.end method

.method private native native_setProcessor_parameter(Ljava/lang/String;)Z
.end method

.method private native native_setRecordingSurface(Ljava/lang/Object;)V
.end method

.method private native native_setSaveAsFlipped(I)V
.end method

.method private native native_setScaleFactorDelta(F)V
.end method

.method private final native native_setup(Ljava/lang/Object;I)V
.end method

.method private native native_snapshot()V
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string p0, "SecMultiProcessor"

    const-string p1, "mEventHandler is null"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public changeViewMode(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_changeViewMode(I)V

    return-void
.end method

.method public frontRearSwitch()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_frontRearSwitch()V

    return-void
.end method

.method public declared-synchronized initialize()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_stop()Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_release()V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEventHandler:Lcom/samsung/android/camera/effect/SecMultiProcessor$EventHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowHeight:I

    .line 8
    iput v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCameraMode(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setCameraMode(I)V

    return-void
.end method

.method public declared-synchronized setEffectProcessorListener(Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SecMultiProcessor"

    const-string v1, "setEffectProcessorListener"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mEffectProcessorListener:Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setInputSurfaceWithId(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setInputSurfaceWithId(Ljava/lang/Object;II)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setOutputSurface(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_getPreviewWindowHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowHeight:I

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_getPreviewWindowWidth()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowWidth:I

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setOutputSurfaceType(Ljava/lang/Object;I)V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_getPreviewWindowHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowHeight:I

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_getPreviewWindowWidth()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mPreviewWindowWidth:I

    return-void
.end method

.method public setPipInfo(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setPipInfo(FFFF)V

    return-void
.end method

.method public setPipRect(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setPipRect(FF)V

    return-void
.end method

.method public setPipVisibility(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setPipVisibility(I)V

    return-void
.end method

.method public setProcessorParameter(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setProcessor_parameter(Ljava/lang/String;)Z

    return-void
.end method

.method public setRecordingSurface(Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setRecordingSurface(Ljava/lang/Object;)V

    return-void
.end method

.method public setSaveAsFlipped(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_setSaveAsFlipped(I)V

    return-void
.end method

.method public declared-synchronized snapshot()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_snapshot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startProcessing()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_start()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopProcessing()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/camera/effect/SecMultiProcessor;->mIsProcessing:Z

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->native_stop()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
