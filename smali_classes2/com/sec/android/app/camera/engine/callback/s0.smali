.class public final synthetic Lcom/sec/android/app/camera/engine/callback/s0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/s0;->a:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/s0;->a:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/RecordingMotionSpeedModeInfoCallback;->b(Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;Lcom/sec/android/app/camera/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;)V

    return-void
.end method
