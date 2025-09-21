.class public final synthetic Lcom/sec/android/app/camera/engine/request/q4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/request/StartBackgroundRecordingRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/request/StartBackgroundRecordingRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/q4;->a:Lcom/sec/android/app/camera/engine/request/StartBackgroundRecordingRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/q4;->a:Lcom/sec/android/app/camera/engine/request/StartBackgroundRecordingRequest;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/StartBackgroundRecordingRequest;->b(Lcom/sec/android/app/camera/engine/request/StartBackgroundRecordingRequest;)V

    return-void
.end method
