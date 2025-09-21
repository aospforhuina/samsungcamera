.class public final synthetic Lcom/sec/android/app/camera/engine/request/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/engine/request/MakerBuilder$Builder;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/engine/request/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/request/u;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/request/u;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/request/u;->a:Lcom/sec/android/app/camera/engine/request/u;

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

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->s(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
