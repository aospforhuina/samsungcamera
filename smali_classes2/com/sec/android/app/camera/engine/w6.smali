.class public final synthetic Lcom/sec/android/app/camera/engine/w6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

.field public final synthetic b:[B

.field public final synthetic c:Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;[BLcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/w6;->a:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/w6;->b:[B

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/w6;->c:Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;

    iput p4, p0, Lcom/sec/android/app/camera/engine/w6;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/w6;->a:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/w6;->b:[B

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/w6;->c:Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;

    iget p0, p0, Lcom/sec/android/app/camera/engine/w6;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->c(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;[BLcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V

    return-void
.end method
