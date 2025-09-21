.class public final synthetic Lcom/sec/android/app/camera/setting/repository/mb;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/setting/repository/ValueGetter;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/setting/repository/mb;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/setting/repository/mb;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/repository/mb;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/repository/mb;->a:Lcom/sec/android/app/camera/setting/repository/mb;

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

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->y6()I

    move-result p0

    return p0
.end method
