.class public final synthetic Lcom/sec/android/app/camera/engine/recordingsession/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/w;->a:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/w;->a:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->cleanupTempFile()V

    return-void
.end method
