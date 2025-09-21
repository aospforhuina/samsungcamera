.class Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;
.super Ljava/lang/Object;
.source "RecordingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mIsPreviewRecording:Z

.field private mListener:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;

.field final mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

.field mSaveAsPreviewed:I

.field mStorage:I

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/Surface;Lcom/sec/android/app/camera/interfaces/Resolution;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mSurface:Landroid/view/Surface;

    .line 4
    iput-object p3, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mListener:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static createBuilder(Landroid/content/Context;Landroid/view/Surface;Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;-><init>(Landroid/content/Context;Landroid/view/Surface;Lcom/sec/android/app/camera/interfaces/Resolution;)V

    return-object v0
.end method


# virtual methods
.method build()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;-><init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;)V

    return-object v0
.end method

.method setEventListener(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mListener:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;

    return-object p0
.end method

.method setPreviewRecording(Z)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mIsPreviewRecording:Z

    return-object p0
.end method

.method setSaveAsPreviewed(I)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mSaveAsPreviewed:I

    return-object p0
.end method

.method setStorage(I)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->mStorage:I

    return-object p0
.end method
