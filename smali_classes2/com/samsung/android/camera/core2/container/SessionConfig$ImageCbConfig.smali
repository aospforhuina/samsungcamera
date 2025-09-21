.class public Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;
.super Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCbConfig"
.end annotation


# instance fields
.field private final c:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field private final d:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILandroid/util/Size;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;-><init>(ILandroid/util/Size;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/util/Size;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c:Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->h()I

    move-result p0

    return p0
.end method

.method public d()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d:Landroid/util/Size;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-super {p0}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c:Lcom/samsung/android/camera/core2/util/ImgFormat;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d:Landroid/util/Size;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "%s, format: %s, size: %s"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
