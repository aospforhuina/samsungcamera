.class Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$5;
.super Lcom/samsung/android/camera/core2/node/NodeChain$Key;
.source "ProLitePhotoMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->X3(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
        "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
        "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/camera/core2/node/NodeChain$Key;-><init>(ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-void
.end method
