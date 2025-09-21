.class final Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;
.super Ljava/lang/Object;
.source "GooglePhotosHelperV2.kt"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler$Companion;

.field public static final HEIC_SEF_XMP_PADDING:I = 0x43

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final mNativeContext:J

.field public reserver:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;

.field private xmpPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler$Companion;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler$Companion;

    .line 1
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->TAG:Ljava/lang/String;

    const-string v0, "apex_jni.media.samsung"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private final native native_remove_xmp_on_heic(Ljava/io/FileDescriptor;)V
.end method


# virtual methods
.method public final getFd()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->fd:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public final getReserver()Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->reserver:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "reserver"

    invoke-static {p0}, Lkotlin/jvm/internal/l;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getXmpPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->xmpPosition:J

    return-wide v0
.end method

.method public removeXmp()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->native_remove_xmp_on_heic(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public reserveXmp()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler$DefaultImpls;->reserveXmp(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;)V

    return-void
.end method

.method public reserveXmp(I)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->getReserver()Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;->invoke(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->xmpPosition:J

    return-void
.end method

.method public final setReserver(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->reserver:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;

    return-void
.end method

.method public final setXmpPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->xmpPosition:J

    return-void
.end method

.method public writeXmp(JJJJJ)V
    .locals 14

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->xmpPosition:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "xmpPosition is 0, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v1, 0x500

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->HEIC:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const/16 v3, 0x43

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-static/range {v2 .. v13}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;->access$getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lc/d;

    move-result-object v2

    .line 5
    new-instance v3, Lf/d;

    invoke-direct {v3}, Lf/d;-><init>()V

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v3, v4}, Lf/d;->y(Z)Lf/d;

    .line 7
    invoke-virtual {v3, v4}, Lf/d;->A(Z)Lf/d;

    .line 8
    invoke-static {v2, v3}, Lc/e;->e(Lc/d;Lf/d;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    .line 10
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const/4 v3, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->getXmpPosition()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 14
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v2, v3}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method
