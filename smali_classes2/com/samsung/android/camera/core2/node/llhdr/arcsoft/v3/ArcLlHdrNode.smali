.class public Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/v3/ArcLlHdrNode;
.super Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;
.source "ArcLlHdrNode.java"


# static fields
.field private static final ARC_LL_HDR_V3_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field protected static final NATIVE_COMMAND_SET_ZSL_TYPE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "V3/ArcLlHdrNode"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/v3/ArcLlHdrNode;->ARC_LL_HDR_V3_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/v3/ArcLlHdrNode$1;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/v3/ArcLlHdrNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/v3/ArcLlHdrNode;->NATIVE_COMMAND_SET_ZSL_TYPE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/v3/ArcLlHdrNode;->ARC_LL_HDR_V3_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const v1, 0x10ca0c

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;)V

    return-void
.end method


# virtual methods
.method protected nativeCallCommandInit()V
    .locals 4

    sget-object v0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mLensFacing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected nativeCallSpecificCommand(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result p1

    const/16 v0, 0x1e

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    sget-object v3, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/v3/ArcLlHdrNode;->ARC_LL_HDR_V3_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "NATIVE_COMMAND_SET_ZSL_TYPE: dsMode=0x%X, isZslType=%b"

    invoke-static {v3, p1, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/v3/ArcLlHdrNode;->NATIVE_COMMAND_SET_ZSL_TYPE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public bridge synthetic processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method
