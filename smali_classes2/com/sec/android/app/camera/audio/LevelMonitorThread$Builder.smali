.class Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;
.super Ljava/lang/Object;
.source "LevelMonitorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/audio/LevelMonitorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field mAudioRecord:Landroid/media/AudioRecord;

.field mBufferSize:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create()Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method build()Lcom/sec/android/app/camera/audio/LevelMonitorThread;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/audio/LevelMonitorThread;-><init>(Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;)V

    return-object v0
.end method

.method setAudioRecord(Landroid/media/AudioRecord;)Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method setBufferSize(I)Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;->mBufferSize:I

    return-object p0
.end method
