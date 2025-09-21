.class public final synthetic Lcom/sec/android/app/camera/engine/recordingsession/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/i;->a:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/i;->a:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->f(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;)V

    return-void
.end method
