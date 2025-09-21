.class Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private mCurrentFileDuration:J

.field private mCurrentFileSize:J

.field private mIsMaxDurationLimited:Z

.field private mMaxDuration:I

.field private mMaxFileSize:J

.field private mOrientation:I

.field private mPreviousDuration:J

.field private mTotalDuration:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mTotalDuration:J

    .line 3
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mCurrentFileDuration:J

    .line 4
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mPreviousDuration:J

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mMaxDuration:I

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mIsMaxDurationLimited:Z

    .line 7
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mCurrentFileSize:J

    .line 8
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mMaxFileSize:J

    .line 9
    iput v2, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mOrientation:I

    return-void
.end method


# virtual methods
.method getCurrentFileDurationInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mCurrentFileDuration:J

    return-wide v0
.end method

.method getCurrentFileSizeInKb()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mCurrentFileSize:J

    return-wide v0
.end method

.method getMaxDurationInMs()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mMaxDuration:I

    return p0
.end method

.method getMaxFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mMaxFileSize:J

    return-wide v0
.end method

.method getOrientation()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mOrientation:I

    return p0
.end method

.method getPreviousDurationInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mPreviousDuration:J

    return-wide v0
.end method

.method getTotalDurationInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mTotalDuration:J

    return-wide v0
.end method

.method isMaxDurationLimited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mIsMaxDurationLimited:Z

    return p0
.end method

.method reset()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mTotalDuration:J

    .line 2
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mCurrentFileDuration:J

    .line 3
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mPreviousDuration:J

    .line 4
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mCurrentFileSize:J

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mMaxDuration:I

    .line 6
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mMaxFileSize:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mIsMaxDurationLimited:Z

    .line 8
    iput v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mOrientation:I

    return-void
.end method

.method setCurrentFileDurationInMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mCurrentFileDuration:J

    return-void
.end method

.method setCurrentFileSizeInKb(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mCurrentFileSize:J

    return-void
.end method

.method setMaxDurationInMs(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mMaxDuration:I

    return-void
.end method

.method setMaxDurationLimited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mIsMaxDurationLimited:Z

    return-void
.end method

.method setMaxFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mMaxFileSize:J

    return-void
.end method

.method setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mOrientation:I

    return-void
.end method

.method setPreviousDurationInMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mPreviousDuration:J

    return-void
.end method

.method setTotalDurationInMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->mTotalDuration:J

    return-void
.end method
