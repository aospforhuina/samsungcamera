.class public final synthetic Lcom/samsung/android/camera/core2/maker/r5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$1;

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$1;Landroid/net/Uri;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/r5;->a:Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$1;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/r5;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/r5;->c:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/r5;->a:Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$1;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/r5;->b:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/r5;->c:Landroid/util/Size;

    check-cast p1, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$1;->c(Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$1;Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/camera/core2/callback/AgifEventCallback;)V

    return-void
.end method
