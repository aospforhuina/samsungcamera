.class public final synthetic Lcom/samsung/android/camera/core2/maker/vg;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/maker/vg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/maker/vg;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/maker/vg;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/vg;->a:Lcom/samsung/android/camera/core2/maker/vg;

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

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->O4()V

    return-void
.end method
