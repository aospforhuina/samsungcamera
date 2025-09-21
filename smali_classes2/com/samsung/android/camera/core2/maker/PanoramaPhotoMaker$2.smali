.class Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$2;
.super Ljava/lang/Object;
.source "PanoramaPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->W3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;I)V

    return-void
.end method
