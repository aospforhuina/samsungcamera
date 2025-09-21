.class public final synthetic Lcom/sec/android/app/camera/engine/v6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

.field public final synthetic b:[B

.field public final synthetic c:Landroid/util/Size;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;[BLandroid/util/Size;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/v6;->a:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/v6;->b:[B

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/v6;->c:Landroid/util/Size;

    iput p4, p0, Lcom/sec/android/app/camera/engine/v6;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/v6;->a:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/v6;->b:[B

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/v6;->c:Landroid/util/Size;

    iget p0, p0, Lcom/sec/android/app/camera/engine/v6;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->b(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;[BLandroid/util/Size;I)V

    return-void
.end method
