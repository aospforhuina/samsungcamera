.class public Lcom/samsung/android/camera/core2/util/ImageFile;
.super Ljava/io/File;
.source "ImageFile.java"


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/ImageInfo;


# direct methods
.method protected constructor <init>(Ljava/io/File;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/util/ImageInfo;->d()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageFile;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->c(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    :cond_0
    return-void
.end method

.method public static h(Ljava/io/File;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageFile;
    .locals 1

    const-string v0, "file"

    .line 1
    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/util/ImageFile;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/util/ImageFile;-><init>(Ljava/io/File;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/samsung/android/camera/core2/util/ImageInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageFile;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    return-object p0
.end method

.method public b(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageFile;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->a()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageFile;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->c(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-super {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/ImageFile;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/ImageFile;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageFile;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "ImageFile - path(%s), size(%s), format(%s), timestamp(%d)"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
