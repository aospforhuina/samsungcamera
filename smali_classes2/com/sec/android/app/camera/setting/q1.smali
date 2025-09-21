.class public final synthetic Lcom/sec/android/app/camera/setting/q1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/setting/q1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/setting/q1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/q1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/q1;->a:Lcom/sec/android/app/camera/setting/q1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/sec/android/app/camera/setting/ExclusiveSettingString;->a(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
