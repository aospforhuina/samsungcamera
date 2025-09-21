.class public final synthetic Lcom/sec/android/app/camera/setting/repository/l6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/setting/repository/ValueGetter;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/setting/repository/l6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/setting/repository/l6;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/repository/l6;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/repository/l6;->a:Lcom/sec/android/app/camera/setting/repository/l6;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->Y3()I

    move-result p0

    return p0
.end method
