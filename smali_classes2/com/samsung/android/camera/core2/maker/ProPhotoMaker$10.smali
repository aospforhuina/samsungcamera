.class Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$10;
.super Ljava/lang/Object;
.source "ProPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/proRgbConversion/ProRgbConversionNodeBase$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->l5(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$10;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string p1, "error ocurred in proRgbConversionNode"

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
