.class public final synthetic Lcom/samsung/android/camera/core2/maker/uh;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/STPhotoMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/uh;->a:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/uh;->a:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->D4(Lcom/samsung/android/camera/core2/maker/STPhotoMaker;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method
