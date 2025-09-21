.class public final synthetic Lcom/samsung/android/camera/core2/processor/nodeController/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$NodeCallback;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/processor/nodeController/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/processor/nodeController/o;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/nodeController/o;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/nodeController/o;->a:Lcom/samsung/android/camera/core2/processor/nodeController/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->j(I)V

    return-void
.end method
