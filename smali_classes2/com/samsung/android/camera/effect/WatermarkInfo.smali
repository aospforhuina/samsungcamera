.class public Lcom/samsung/android/camera/effect/WatermarkInfo;
.super Ljava/lang/Object;
.source "WatermarkInfo.java"


# static fields
.field public static final ALIGN_BOTTOM_CENTER:I = 0x1

.field public static final ALIGN_BOTTOM_LEFT:I = 0x0

.field public static final ALIGN_BOTTOM_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SECIMAGING/J"


# instance fields
.field private mAlignPosition:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mMargin:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mAlignPosition:I

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mMargin:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatermarkInfo: create, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECIMAGING/J"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 6
    iput p2, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mAlignPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;III)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mAlignPosition:I

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mMargin:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatermarkInfo: create, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Margin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECIMAGING/J"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-object p1, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 12
    iput p2, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mAlignPosition:I

    .line 13
    iget-object p0, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mMargin:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3, p4, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getAlignPosition()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mAlignPosition:I

    return p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getMargin()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mMargin:Landroid/graphics/Rect;

    return-object p0
.end method

.method public release()V
    .locals 2

    const-string v0, "SECIMAGING/J"

    const-string v1, "WatermarkInfo: release"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const-string v1, "release: bitmap recycle"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/camera/effect/WatermarkInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
