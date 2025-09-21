.class Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;
.super Ljava/lang/Object;
.source "PictureProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/PictureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureSavingTask"
.end annotation


# instance fields
.field private mBurstCaptureCount:I

.field private mBurstCaptureGroupId:I

.field private final mDateTaken:J

.field private final mDirectory:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private mHiddenFilePath:Ljava/lang/String;

.field private final mIsMotionPhotoEnabled:Z

.field private mOrientation:I

.field private mPicture:Ljava/nio/ByteBuffer;

.field private final mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

.field private final mSefData:Lcom/sec/android/app/camera/engine/SefData;

.field private final mStorage:I

.field private final mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/lang/String;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 2

    .line 31
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    .line 33
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mHiddenFilePath:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    .line 36
    new-instance v1, Lcom/sec/android/app/camera/engine/SefData;

    invoke-direct {v1}, Lcom/sec/android/app/camera/engine/SefData;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    .line 37
    iput-object p7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 38
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {p1, p7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result p7

    iput p7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    .line 40
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    .line 41
    iput-wide p4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    .line 42
    iput-object p3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    .line 43
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    .line 44
    iput p6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    .line 46
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentMpUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;JIIILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V
    .locals 6

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    .line 49
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mHiddenFilePath:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    .line 52
    new-instance v0, Lcom/sec/android/app/camera/engine/SefData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/SefData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    .line 53
    iput p6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    .line 54
    iput p7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    .line 55
    iput-object p8, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 56
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {p1, p8}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    .line 58
    invoke-static {p2}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    .line 60
    sget-object p6, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->BURST:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-ne p8, p6, :cond_0

    iget v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    move-object v0, p1

    move-object v1, p2

    move-object v2, p8

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/engine/PictureProcessor;->createFileNameForBurstCapture(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;JI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Lcom/sec/android/app/camera/util/ImageUtils;->createFileName(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    .line 63
    iput-object p9, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 2

    .line 16
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    .line 18
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mHiddenFilePath:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    .line 21
    new-instance v1, Lcom/sec/android/app/camera/engine/SefData;

    invoke-direct {v1}, Lcom/sec/android/app/camera/engine/SefData;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    .line 22
    iput-object p6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 23
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {p1, p6}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    .line 25
    invoke-static {p2}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    .line 26
    iput-wide p3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    .line 27
    invoke-virtual {p1, p2, p6}, Lcom/sec/android/app/camera/engine/PictureProcessor;->createFileName(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    .line 29
    iput p5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    .line 30
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mHiddenFilePath:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    .line 6
    new-instance v0, Lcom/sec/android/app/camera/engine/SefData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/SefData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    .line 7
    iput-object p6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 8
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p1, p6}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    .line 10
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getDirectoryName(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    .line 11
    iput-wide p3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    .line 12
    invoke-virtual {p1, p2, p6}, Lcom/sec/android/app/camera/engine/PictureProcessor;->createFileName(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    .line 14
    iput p5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    .line 15
    iput-object p7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    .line 66
    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mHiddenFilePath:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    .line 69
    new-instance v0, Lcom/sec/android/app/camera/engine/SefData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/SefData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    .line 70
    iput-object p7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 71
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {p1, p7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    .line 73
    invoke-direct {p0, p7}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getDirectoryName(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    .line 74
    iput-wide p4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    .line 75
    invoke-virtual {p1, p2, p7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->createFileName(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    .line 76
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mHiddenFilePath:Ljava/lang/String;

    .line 78
    iput p6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    .line 79
    iput-object p8, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->lambda$updateToDbForBurstCapture$3()V

    return-void
.end method

.method private addColorSpaceModeSefInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string v0, "addColorSpaceModeSefInfo : Returned because PictureDataInfo is invalid"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->D:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/r6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/r6;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private addExifInfoFunModePhoto()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".temp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-wide v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0, v3, v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->writeImage(Ljava/lang/String;Ljava/lang/String;JLjava/nio/ByteBuffer;)Z

    move-result v0

    const-string v1, "PictureProcessor"

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getModelNameForFunMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/app/camera/util/ExifUtil;->addExifInfo(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {v0}, Lf1/e;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 8
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 10
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string p0, "Failed to write image data to temp file"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;Lcom/sec/android/app/camera/engine/LastContentData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->lambda$run$1(Lcom/sec/android/app/camera/engine/LastContentData;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->lambda$run$0()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->lambda$addColorSpaceModeSefInfo$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->lambda$updateToDbForRawImage$4()V

    return-void
.end method

.method private getDirectoryName(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->SMART_SCAN:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    iget p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {p0}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMimeType()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported picture saving type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "image/gif"

    return-object p0

    :cond_2
    const-string p0, "image/x-adobe-dng"

    return-object p0

    :cond_3
    const-string p0, "image/heic"

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "image/jpeg"

    return-object p0
.end method

.method private getModelNameForFunMode()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object p0, Lu3/l;->l0:Lu3/l;

    invoke-static {p0}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v1, p0, v0

    const-string v0, "%s %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private initBurstCaptureData()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    sget v1, Lcom/sec/android/app/camera/interfaces/Constants;->MAX_BURST_CAPTURE_COUNT:I

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    add-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "%03d"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getFileExtension(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 7
    invoke-static {v4}, Lcom/sec/android/app/camera/util/Util;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "title"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_display_name"

    .line 8
    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-wide v8, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v8, "datetaken"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    iget-wide v8, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v8, "date_modified"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "media_type"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v8, "mime_type"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "orientation"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "_data"

    .line 14
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "burst_group_id"

    invoke-virtual {v7, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0x9e0

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sef_file_type"

    invoke-virtual {v7, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "group_type"

    invoke-virtual {v7, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    new-instance v4, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;

    iget v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    invoke-direct {v4, v5, v7}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;-><init>(ILandroid/content/ContentValues;)V

    .line 19
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private insertBurstCaptureDataToSef()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;

    .line 3
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->b(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->b(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->a(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "burst_group_id"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->b(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "group_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->addColorSpaceModeSefInfo()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/SefData;->addBurstShotInfo(I)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget-wide v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/SefData;->addUTCInfo(J)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/SefData;->addMobileCountryCodeInfo(Landroid/content/Context;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/SefData;->insertSefToPictureBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method private insertSefDataToBuffer()V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget-wide v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/SefData;->addUTCInfo(J)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/SefData;->addMobileCountryCodeInfo(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "Animated_Gif_Info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/16 v3, 0x960

    invoke-virtual {v0, v2, v1, v3}, Lcom/sec/android/app/camera/engine/SefData;->add(Ljava/lang/String;[BI)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/SefData;->insertSefToPictureBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->addColorSpaceModeSefInfo()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget-wide v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/SefData;->addUTCInfo(J)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/SefData;->addMobileCountryCodeInfo(Landroid/content/Context;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->g(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/Engine$SefUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->g(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/Engine$SefUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$SefUpdateListener;->onSefUpdatePrepared(Lcom/sec/android/app/camera/interfaces/Engine$SefDataHolder;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mHiddenFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/engine/SefData;->addNonDestructionInfo(Ljava/lang/String;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/SefData;->insertSefToPictureBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method private insertSefDataToRawBuffer()V
    .locals 4

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->getShootingModeInfo(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v2, 0xc61

    const-string v3, "Camera_Capture_Mode_Info"

    .line 4
    invoke-virtual {v1, v3, v0, v2}, Lcom/sec/android/app/camera/engine/SefData;->add(Ljava/lang/String;[BI)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/SefData;->insertSefToPictureBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private insertToDb(Landroid/content/ContentValues;)V
    .locals 5

    const-string v0, "InsertToDb"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "Capture - InsertToDb"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {v1, p1, v3, v4}, Lcom/sec/android/app/camera/util/DatabaseUtil;->insertToDb(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object p1

    .line 5
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 7
    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/LastContentData;->clear()V

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->RAW:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-ne v3, v4, :cond_0

    .line 9
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/LastContentData;->setRawContentSecMpUri(Landroid/net/Uri;)V

    .line 10
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setRawContentMpUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentSecMpUri(Landroid/net/Uri;)V

    .line 12
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentMpUri(Landroid/net/Uri;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    if-nez p1, :cond_1

    const-string p1, "PictureProcessor"

    const-string v1, "insertToDb : fileUri is null"

    .line 14
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mHiddenFilePath:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->d(Lcom/sec/android/app/camera/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mHiddenFilePath:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/util/DatabaseUtil;->insertNonDestructionDataToDb(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v2, p0, p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 18
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private insertToDbForBurstCapture()V
    .locals 8

    const-string v0, "InsertToDbForBurstCapture"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "Capture - InsertToDbForBurstCapture"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Landroid/content/ContentValues;

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_1

    .line 6
    iget-object v6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v6}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;

    invoke-static {v6}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->b(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 7
    new-instance v6, Landroid/content/ContentValues;

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;

    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->b(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    aput-object v6, v4, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/util/DatabaseUtil;->insertToDbForBurstCapture(Landroid/content/Context;[Landroid/content/ContentValues;I)[Landroid/util/Pair;

    move-result-object v1

    move v4, v3

    .line 9
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 10
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;

    aget-object v6, v1, v4

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->h(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;Landroid/util/Pair;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 12
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentSecMpUri(Landroid/net/Uri;)V

    .line 13
    aget-object v1, v1, v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentMpUri(Landroid/net/Uri;)V

    .line 14
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {v2, p0, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 15
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private isMotionPhotoImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$addColorSpaceModeSefInfo$2(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSefData:Lcom/sec/android/app/camera/engine/SefData;

    const/4 p1, 0x3

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    const/16 v0, 0xcc1

    const-string v1, "Color_Display_P3"

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/android/app/camera/engine/SefData;->add(Ljava/lang/String;[BI)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0xct
        0x6t
        0x6t
    .end array-data
.end method

.method private synthetic lambda$run$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureSavingFailed()V

    return-void
.end method

.method private synthetic lambda$run$1(Lcom/sec/android/app/camera/engine/LastContentData;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureSaved(Lcom/sec/android/app/camera/interfaces/Engine$ContentData;)V

    const-string p0, "TakePictureSequence"

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string p0, "Capture - TakePictureSequence"

    .line 3
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$updateToDbForBurstCapture$3()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureProcessingCompleted()V

    return-void
.end method

.method private synthetic lambda$updateToDbForRawImage$4()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onDbUpdateFailed(I)V

    return-void
.end method

.method private saveBurstImageToUri()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/ImageUtils;->makeDirectory(Ljava/lang/String;)Z

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->d(Lcom/sec/android/app/camera/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->e(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/ImageUtils;->writeImageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->g(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;Z)V

    goto :goto_0

    :cond_1
    const-string p0, "PictureProcessor"

    const-string v0, "saveBurstImageToUri : failed to writing image to file."

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private saveImage()Z
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertToDb(Landroid/content/ContentValues;)V

    const-string v0, "saveImage"

    .line 2
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "Capture - SaveImage"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->c(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->addExifInfoFunModePhoto()V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertSefDataToBuffer()V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/ImageUtils;->makeDirectory(Ljava/lang/String;)Z

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->writeImage()Z

    move-result v1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 11
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 13
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/LastContentData;->clearPictureData()V

    if-nez v1, :cond_1

    const-string p0, "PictureProcessor"

    const-string v0, "SaveImage : failed to writing image to file."

    .line 14
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 15
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->updateToDb(Landroid/content/ContentValues;)V

    return v3
.end method

.method private saveRawImage()Z
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertToDb(Landroid/content/ContentValues;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "Capture - SaveRawImage"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertSefDataToRawBuffer()V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/ImageUtils;->makeDirectory(Ljava/lang/String;)Z

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->writeImage()Z

    move-result v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    if-nez v1, :cond_0

    const-string p0, "PictureProcessor"

    const-string v0, "saveRawImage : failed to writing image to file."

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 9
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->updateToDbForRawImage(Landroid/content/ContentValues;)V

    return v3
.end method

.method private saveSmartScanImage()Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "Capture - SaveSmartScanImage"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/ImageUtils;->makeDirectory(Ljava/lang/String;)Z

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/sec/android/app/camera/util/ImageUtils;->writeImage(Ljava/lang/String;Ljava/lang/String;JLjava/nio/ByteBuffer;)Z

    move-result v1

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getLocationForCapture()Landroid/location/Location;

    move-result-object v5

    sget-object v6, Lu3/l;->l0:Lu3/l;

    invoke-static {v6}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/util/ExifUtil;->addExifInfo(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/LastContentData;->clearPictureData()V

    if-nez v1, :cond_0

    const-string p0, "PictureProcessor"

    const-string v0, "saveSmartScanImage : failed to writing image to file."

    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    return v3
.end method

.method private setContentValues(Landroid/content/ContentValues;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2
    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date_modified"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->GIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-ne v0, v1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAgifCaptureController()Lcom/sec/android/app/camera/engine/AgifCaptureController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->prepareDbUpdate(Landroid/content/ContentValues;)V

    :cond_0
    return-void
.end method

.method private updateToDb(Landroid/content/ContentValues;)V
    .locals 7

    const-string v0, "PictureProcessor"

    const-string v1, "UpdateToDb"

    .line 1
    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v3, "Capture - UpdateToDb"

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    :try_start_1
    const-string v4, "Input stream is null, return."

    .line 5
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    .line 7
    :cond_1
    :try_start_3
    new-instance v4, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v4, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v5, "Orientation"

    const/4 v6, -0x1

    .line 8
    invoke-virtual {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 9
    invoke-static {v4}, Lcom/sec/android/app/camera/util/ExifUtil;->convertExifOrientationToMediaOrientation(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 11
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v2

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateToDb : Could not read exif tags - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->setContentValues(Landroid/content/ContentValues;)V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->isMotionPhotoImage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    :try_start_7
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->d(Lcom/sec/android/app/camera/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    const-string v5, "rw"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 16
    :try_start_8
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->store(Landroid/content/ContentValues;Landroid/os/ParcelFileDescriptor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_4

    .line 17
    :try_start_9
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catchall_2
    move-exception v4

    if-eqz v2, :cond_3

    .line 18
    :try_start_a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_b
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    const-string/jumbo v2, "updateToDb : IOException"

    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentSecMpUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v2, v4, p1}, Lcom/sec/android/app/camera/util/DatabaseUtil;->updateToDb(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 21
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->e(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/Engine$DbUpdateCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->e(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/Engine$DbUpdateCompleteListener;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$DbUpdateCompleteListener;->onDbUpdateCompleted(Ljava/io/File;)V

    .line 23
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v3, p0, p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 24
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private updateToDbForBurstCapture()V
    .locals 11

    const-string v0, "UpdateToDbForBurstCapture"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "Capture - UpdateToDbForBurstCapture"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Pair;

    .line 6
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    move v5, v3

    move v6, v5

    .line 7
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 8
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;

    .line 9
    new-instance v8, Landroid/util/Pair;

    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->d(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->e(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v1, v5

    .line 10
    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->c(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    .line 11
    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->b(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 12
    new-instance v8, Landroid/content/ContentValues;

    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->b(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    aput-object v8, v4, v5

    .line 13
    :cond_0
    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;->f(Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v4, v6}, Lcom/sec/android/app/camera/util/DatabaseUtil;->updateToDbForBurstCapture(Landroid/content/Context;[Landroid/util/Pair;[Landroid/content/ContentValues;I)V

    .line 15
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/engine/n6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/engine/n6;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {v2, p0, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 18
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private updateToDbForRawImage(Landroid/content/ContentValues;)V
    .locals 7

    const-string v0, "PictureProcessor"

    const-string v1, "UpdateToDbForRawImage"

    .line 1
    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v3, "Capture - UpdateToDbForRawImage"

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->setContentValues(Landroid/content/ContentValues;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "DB update"

    .line 5
    invoke-static {v4}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v6}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getRawContentSecMpUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v5, v6, p1}, Lcom/sec/android/app/camera/util/DatabaseUtil;->updateToDb(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string/jumbo p0, "updateToDbForRawImage : ContentResolver update failed"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {v3, p0, v2}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 9
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    goto :goto_1

    :catch_1
    :try_start_2
    const-string/jumbo p1, "updateToDbForRawImage : Not enough space in database"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/engine/p6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/p6;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 12
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {v3, p1, v2}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 13
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 14
    throw p0
.end method

.method private writeImage()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->d(Lcom/sec/android/app/camera/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/util/ImageUtils;->writeImageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method isBurstTask()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->BURST:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->BURST_DB_UPDATE_ONLY:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->c(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/LastContentData;->clearPictureData()V

    goto/16 :goto_3

    .line 4
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->saveSmartScanImage()Z

    move-result v1

    goto :goto_1

    .line 6
    :pswitch_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->updateToDb(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 7
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->saveRawImage()Z

    goto :goto_2

    .line 8
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->updateToDbForBurstCapture()V

    goto :goto_2

    .line 10
    :pswitch_4
    iget v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    if-ne v0, v2, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->initBurstCaptureData()V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertToDbForBurstCapture()V

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertBurstCaptureDataToSef()V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->saveBurstImageToUri()Z

    return-void

    .line 15
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    .line 16
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->updateToDb(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->saveImage()Z

    move-result v1

    goto :goto_1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 18
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendNewPictureBroadcast(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/o6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/o6;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 20
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->c(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    move-object v2, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iget v6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    sget-object v7, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    iget v8, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/camera/engine/LastContentData;->updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;I)V

    .line 21
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/q6;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/engine/q6;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;Lcom/sec/android/app/camera/engine/LastContentData;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
