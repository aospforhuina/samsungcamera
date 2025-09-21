.class public final synthetic Lcom/samsung/android/camera/core2/maker/vf;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/NonDestructionNode$NodeCallback;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/maker/vf;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/maker/vf;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/maker/vf;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/vf;->a:Lcom/samsung/android/camera/core2/maker/vf;

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

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->L3(I)V

    return-void
.end method
