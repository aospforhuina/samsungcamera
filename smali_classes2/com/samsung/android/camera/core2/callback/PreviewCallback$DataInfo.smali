.class public Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;
.super Ljava/lang/Object;
.source "PreviewCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callback/PreviewCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataInfo"
.end annotation


# instance fields
.field private final a:Landroid/util/Size;

.field private final b:Ljava/lang/Long;

.field private final c:Lcom/samsung/android/camera/core2/util/ImgFormat;


# direct methods
.method public constructor <init>(Landroid/util/Size;Ljava/lang/Long;Lcom/samsung/android/camera/core2/util/ImgFormat;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;->a:Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;

    invoke-virtual {p3, v0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->k(Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->a:Landroid/util/Size;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->b:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->c:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const-string p2, "ImageFormat(%s) is not supported for PreviewCallback"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->a:Landroid/util/Size;

    return-object p0
.end method

.method public b()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->b:Ljava/lang/Long;

    return-object p0
.end method
