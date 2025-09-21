.class Lcom/samsung/android/camera/core2/maker/AiHighResPhotoMaker$4;
.super Ljava/lang/Object;
.source "AiHighResPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/AiHighResPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/AiHighResPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/AiHighResPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/AiHighResPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/AiHighResPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "SefNode.NodeCallback throws Error"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
