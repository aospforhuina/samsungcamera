.class public final synthetic Lcom/samsung/android/camera/core2/maker/mn;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/VideoMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/VideoMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/mn;->a:Lcom/samsung/android/camera/core2/maker/VideoMaker;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/mn;->a:Lcom/samsung/android/camera/core2/maker/VideoMaker;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/VideoMaker;->O3(Lcom/samsung/android/camera/core2/maker/VideoMaker;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method
