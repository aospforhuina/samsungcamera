.class Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mIsPreviewRecording:Z

.field private final mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

.field private mSaveAsPreviewed:I

.field private mStorage:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/Resolution;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->mIsPreviewRecording:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->mSaveAsPreviewed:I

    return p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->mStorage:I

    return p0
.end method


# virtual methods
.method build()Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo;-><init>(Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;)V

    return-object v0
.end method

.method setPreviewRecording(Z)Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->mIsPreviewRecording:Z

    return-object p0
.end method

.method setSaveAsPreviewed(I)Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->mSaveAsPreviewed:I

    return-object p0
.end method

.method setStorage(I)Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/SettingInfo$Builder;->mStorage:I

    return-object p0
.end method
