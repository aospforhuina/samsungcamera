.class public final synthetic Lw5/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lw5/d0$b;


# static fields
.field public static final synthetic a:Lw5/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lw5/u;

    invoke-direct {v0}, Lw5/u;-><init>()V

    sput-object v0, Lw5/u;->a:Lw5/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ly2/u;)Landroid/content/Intent;
    .locals 0

    invoke-static {p1, p2}, Lw5/d0;->t(Landroid/content/Context;Ly2/u;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
