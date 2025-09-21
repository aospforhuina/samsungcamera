.class Lcom/sec/android/app/camera/engine/LastContentData;
.super Ljava/lang/Object;
.source "LastContentData.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$ContentData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LastContentData"


# instance fields
.field private mContentBurstGroupId:I

.field private mContentType:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

.field private final mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

.field private mDateTaken:J

.field private mFilePath:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mOrientation:I

.field private mPictureData:[B

.field private mThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;-><init>(Lcom/sec/android/app/camera/engine/k5;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentBurstGroupId:I

    .line 5
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mFilePath:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentType:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mPictureData:[B

    .line 3
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnail:Landroid/graphics/Bitmap;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->clear()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentBurstGroupId:I

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOrientation:I

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mDateTaken:J

    .line 9
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mFilePath:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentType:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method clearPictureData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mPictureData:[B

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getContentBurstGroupId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentBurstGroupId:I

    return p0
.end method

.method public getContentMpUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mContentMpUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getContentSecMpUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mContentSecMpUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getContentType()Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentType:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    return-object p0
.end method

.method public getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mDateTaken:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOrientation:I

    return p0
.end method

.method public getPictureData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mPictureData:[B

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRawContentMpUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mRawContentMpUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getRawContentSecMpUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mRawContentSecMpUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnail:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setContentBurstGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentBurstGroupId:I

    return-void
.end method

.method setContentMpUri(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mContentMpUri:Landroid/net/Uri;

    return-void
.end method

.method setContentSecMpUri(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mContentSecMpUri:Landroid/net/Uri;

    return-void
.end method

.method setContentType(Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentType:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    return-void
.end method

.method setDateTaken(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mDateTaken:J

    return-void
.end method

.method setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method protected setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mOrientation:I

    return-void
.end method

.method setPictureData([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mPictureData:[B

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setRawContentMpUri(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mRawContentMpUri:Landroid/net/Uri;

    return-void
.end method

.method setRawContentSecMpUri(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mContentUriSet:Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mRawContentSecMpUri:Landroid/net/Uri;

    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/LastContentData;->mThumbnail:Landroid/graphics/Bitmap;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/LastContentData;->setFilePath(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/camera/engine/LastContentData;->setDateTaken(J)V

    .line 3
    invoke-virtual {p0, p5}, Lcom/sec/android/app/camera/engine/LastContentData;->setOrientation(I)V

    .line 4
    invoke-virtual {p0, p6}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentType(Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;)V

    .line 5
    invoke-virtual {p0, p7}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentBurstGroupId(I)V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/LastContentData;->setPictureData([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "LastContentData"

    const-string p1, "setImageContentData : Out of memory while creating bitmap."

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
