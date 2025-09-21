.class public final synthetic Lm5/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/d0$c;


# static fields
.field public static final synthetic a:Lm5/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lm5/n;

    invoke-direct {v0}, Lm5/n;-><init>()V

    sput-object v0, Lm5/n;->a:Lm5/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sec/android/app/camera/interfaces/CommandInterface;Lcom/sec/android/app/camera/interfaces/CommandId;)Lm5/q0;
    .locals 0

    new-instance p0, Lm5/r0;

    invoke-direct {p0, p1, p2}, Lm5/r0;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-object p0
.end method
