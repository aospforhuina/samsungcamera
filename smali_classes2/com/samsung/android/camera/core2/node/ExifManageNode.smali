.class public Lcom/samsung/android/camera/core2/node/ExifManageNode;
.super Lcom/samsung/android/camera/core2/node/Node;
.source "ExifManageNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;,
        Lcom/samsung/android/camera/core2/node/ExifManageNode$TYPE;,
        Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;
    }
.end annotation


# static fields
.field private static final EXIF_MANAGE_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final NATIVE_COMMAND_WRITE_EXIF:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_WRITE_MAKER_NOTE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WRITE_EXIF_TYPE:I = 0x64

.field public static final WRITE_MAKER_NOTE_TYPE:I = 0x65


# instance fields
.field private mExifConfiguration:Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;

.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    new-instance v3, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "ExifManageNode"

    invoke-direct {v3, v4}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/camera/core2/node/ExifManageNode;->EXIF_MANAGE_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/ExifManageNode$1;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    const/4 v8, 0x2

    aput-object v0, v5, v8

    invoke-direct {v3, v7, v5}, Lcom/samsung/android/camera/core2/node/ExifManageNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v3, Lcom/samsung/android/camera/core2/node/ExifManageNode;->NATIVE_COMMAND_WRITE_EXIF:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/node/ExifManageNode$2;

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-direct {v3, v8, v4}, Lcom/samsung/android/camera/core2/node/ExifManageNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v3, Lcom/samsung/android/camera/core2/node/ExifManageNode;->NATIVE_COMMAND_WRITE_MAKER_NOTE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->EXIF_MANAGE_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/16 v1, 0xf0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    const-string v0, "callback"

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;

    return-void
.end method


# virtual methods
.method public bridge synthetic processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object p2, Lcom/samsung/android/camera/core2/node/ExifManageNode;->EXIF_MANAGE_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "processPictureJpeg E"

    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mExifConfiguration:Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "processPictureJpeg X: failed because exifConfiguration is null"

    .line 3
    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;->onError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object v1

    .line 6
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;->b:Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    if-nez v2, :cond_1

    const-string p1, "processPictureJpeg X: failed because jpegMetadata is null"

    .line 7
    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;->onError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object v1

    .line 10
    :cond_1
    :try_start_2
    iget v0, v0, Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/16 v4, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v4, :cond_3

    const/16 v7, 0x65

    if-eq v0, v7, :cond_2

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processPictureJpeg X: failed due to unknown write type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mExifConfiguration:Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;

    iget v0, v0, Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;->onError()V
    :try_end_2
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-object v1

    .line 14
    :cond_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->NATIVE_COMMAND_WRITE_MAKER_NOTE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    iget-object v7, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mExifConfiguration:Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;

    iget-object v7, v7, Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;->b:Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    aput-object v7, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    goto :goto_0

    .line 15
    :cond_3
    sget-object v0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->NATIVE_COMMAND_WRITE_EXIF:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    iget-object v7, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mExifConfiguration:Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;

    iget-object v7, v7, Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;->b:Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    aput-object v7, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/DirectBuffer;
    :try_end_3
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-nez v0, :cond_4

    :try_start_4
    const-string p1, "processPictureJpeg X: failed to write exif or makerNote"

    .line 16
    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;->onError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    monitor-exit p0

    return-object v1

    :cond_4
    :try_start_5
    const-string v1, "processPictureJpeg X: %s is success."

    new-array v2, v5, [Ljava/lang/Object;

    .line 19
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mExifConfiguration:Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;

    iget v3, v3, Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;->a:I

    if-ne v3, v4, :cond_5

    const-string v3, "WRITE_EXIF_TYPE"

    goto :goto_1

    :cond_5
    const-string v3, "WRITE_MAKER_NOTE_TYPE"

    :goto_1
    aput-object v3, v2, v6

    .line 20
    invoke-static {p2, v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 22
    :try_start_6
    sget-object p2, Lcom/samsung/android/camera/core2/node/ExifManageNode;->EXIF_MANAGE_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPictureJpeg X: fail - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;->onError()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 24
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized setExifConfiguration(Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "exifConfiguration"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/ExifManageNode;->mExifConfiguration:Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
