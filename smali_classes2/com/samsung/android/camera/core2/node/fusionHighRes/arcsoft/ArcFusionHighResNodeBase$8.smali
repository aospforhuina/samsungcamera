.class Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase$8;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "ArcFusionHighResNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase$8;->a:Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Void;)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase$8;->a:Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase;

    invoke-static {p2}, Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase;->m(Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase;)Lcom/samsung/android/camera/core2/node/fusionHighRes/FusionHighResNodeBase$NodeCallback;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase$8;->a:Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase;->l(Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase;)Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/node/fusionHighRes/FusionHighResNodeBase$NodeCallback;->onProgress(Lcom/samsung/android/camera/core2/ExtraBundle;I)V

    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/fusionHighRes/arcsoft/ArcFusionHighResNodeBase$8;->b(Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method
