.class public final synthetic Lcom/sec/android/app/camera/engine/request/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/engine/request/MakerBuilder$Builder;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/engine/request/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/request/o;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/request/o;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/request/o;->a:Lcom/sec/android/app/camera/engine/request/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->l(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
