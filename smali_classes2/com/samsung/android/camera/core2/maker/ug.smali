.class public final synthetic Lcom/samsung/android/camera/core2/maker/ug;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/NonDestructionNode$NodeCallback;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/maker/ug;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/maker/ug;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/maker/ug;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/ug;->a:Lcom/samsung/android/camera/core2/maker/ug;

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

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->G4(I)V

    return-void
.end method
