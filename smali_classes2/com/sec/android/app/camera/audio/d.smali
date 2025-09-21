.class public final synthetic Lcom/sec/android/app/camera/audio/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/d;->a:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/d;->a:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;

    check-cast p1, Landroid/media/MediaRecorder;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->h(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;Landroid/media/MediaRecorder;)V

    return-void
.end method
