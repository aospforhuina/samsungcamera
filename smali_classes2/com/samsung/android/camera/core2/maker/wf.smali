.class public final synthetic Lcom/samsung/android/camera/core2/maker/wf;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/maker/wf;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/maker/wf;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/maker/wf;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/wf;->a:Lcom/samsung/android/camera/core2/maker/wf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->K3()V

    return-void
.end method
