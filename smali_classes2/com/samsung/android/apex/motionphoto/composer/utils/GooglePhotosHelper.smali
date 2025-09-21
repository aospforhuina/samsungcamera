.class public Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;
.super Ljava/lang/Object;
.source "GooglePhotosHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$HeicXMPHandler;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$JpegXMPHandler;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPRemover;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPWriter;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPReserver;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;
    }
.end annotation


# static fields
.field private static final JPEG_LENGTH_SIZE:I = 0x2

.field private static final JPEG_MARKER_SIZE:I = 0x2

.field private static final SEF_XMP_PADDING:I = 0x3b

.field private static final TAG:Ljava/lang/String; = "GooglePhotosHelper"

.field private static final XMP_RESERVED_SIZE:I = 0x500


# instance fields
.field private mMimeType:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;

.field private mPath:Ljava/lang/String;

.field private mXMPPosition:J

.field private mXMPRemover:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPRemover;

.field private mXMPReserver:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPReserver;

.field private mXMPWriter:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "GooglePhotosHelper: path=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mPath:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPPosition:J

    const/16 v0, 0x2e

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".jpg"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object p1, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;->JPEG:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mMimeType:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;

    .line 8
    sget-object p1, Lcom/samsung/android/apex/motionphoto/composer/utils/c;->a:Lcom/samsung/android/apex/motionphoto/composer/utils/c;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPReserver:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPReserver;

    .line 9
    sget-object p1, Lcom/samsung/android/apex/motionphoto/composer/utils/d;->a:Lcom/samsung/android/apex/motionphoto/composer/utils/d;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPWriter:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPWriter;

    .line 10
    sget-object p1, Lcom/samsung/android/apex/motionphoto/composer/utils/a;->a:Lcom/samsung/android/apex/motionphoto/composer/utils/a;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPRemover:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPRemover;

    goto :goto_0

    :cond_0
    const-string v0, ".heic"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    sget-object p1, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;->HEIC:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mMimeType:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;

    .line 13
    sget-object p1, Lcom/samsung/android/apex/motionphoto/composer/utils/e;->a:Lcom/samsung/android/apex/motionphoto/composer/utils/e;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPWriter:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPWriter;

    .line 14
    sget-object p1, Lcom/samsung/android/apex/motionphoto/composer/utils/b;->a:Lcom/samsung/android/apex/motionphoto/composer/utils/b;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPRemover:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPRemover;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;JJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->lambda$new$1(Ljava/lang/String;JJJ)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;IJJ)Lc/d;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;IJJ)Lc/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->lambda$new$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->lambda$new$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;JJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->lambda$new$3(Ljava/lang/String;JJJ)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;I)J
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->lambda$new$0(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;IJJ)Lc/d;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object p0, v1, p1

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const-string p0, "getXMPMeta: primary-type=%s, padding=%d, len=%d, offset=%d"

    .line 5
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lc/e;->c()Lc/g;

    move-result-object p0

    const-string p1, "http://ns.google.com/photos/1.0/camera/"

    const-string p2, "GCamera"

    .line 7
    invoke-interface {p0, p1, p2}, Lc/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "http://ns.google.com/photos/1.0/container/"

    const-string p3, "Container"

    .line 8
    invoke-interface {p0, p2, p3}, Lc/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "http://ns.google.com/photos/1.0/container/item/"

    const-string p3, "Item"

    .line 9
    invoke-interface {p0, p2, p3}, Lc/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-static {}, Lc/e;->b()Lc/d;

    move-result-object p0

    const-string p2, "MicroVideo"

    .line 11
    invoke-interface {p0, p1, p2, v2}, Lc/d;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "MicroVideoVersion"

    .line 12
    invoke-interface {p0, p1, p2, v2}, Lc/d;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "MicroVideoOffset"

    invoke-interface {p0, p1, p3, p2}, Lc/d;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, -0x1

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "MicroVideoPresentationTimestampUs"

    invoke-interface {p0, p1, p3, p2}, Lc/d;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;I)J
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$JpegXMPHandler;->access$600(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$new$1(Ljava/lang/String;JJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$JpegXMPHandler;->access$500(Ljava/lang/String;JJJ)V

    return-void
.end method

.method private static synthetic lambda$new$2(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$JpegXMPHandler;->access$400(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$new$3(Ljava/lang/String;JJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$HeicXMPHandler;->access$300(Ljava/lang/String;JJJ)V

    return-void
.end method

.method private static synthetic lambda$new$4(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$HeicXMPHandler;->access$200(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isHEIC()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mMimeType:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;->HEIC:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isJPEG()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mMimeType:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;->JPEG:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$MimeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeXMP()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPRemover:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPRemover;

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mPath:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPRemover;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public reserveXMP()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPReserver:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPReserver;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mPath:Ljava/lang/String;

    const/16 v2, 0x500

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPReserver;->reserve(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPPosition:J

    .line 3
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xmp position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setXMPReserver(Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPReserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPReserver:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPReserver;

    return-void
.end method

.method public writeXMP(JJ)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPWriter:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPWriter;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->mXMPPosition:J

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPWriter;->write(Ljava/lang/String;JJJ)V

    return-void
.end method
