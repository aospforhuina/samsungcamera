.class public final synthetic Lcom/sec/android/app/camera/audio/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/media/AudioDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/c;->a:Landroid/media/AudioDeviceInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/c;->a:Landroid/media/AudioDeviceInfo;

    check-cast p1, Landroid/media/MediaRecorder;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->c(Landroid/media/AudioDeviceInfo;Landroid/media/MediaRecorder;)V

    return-void
.end method
