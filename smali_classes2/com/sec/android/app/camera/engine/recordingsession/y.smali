.class public final synthetic Lcom/sec/android/app/camera/engine/recordingsession/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/y;->a:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/y;->a:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;

    check-cast p1, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->a(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;)V

    return-void
.end method
