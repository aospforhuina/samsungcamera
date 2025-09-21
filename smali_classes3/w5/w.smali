.class public final synthetic Lw5/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lw5/d0$b;


# static fields
.field public static final synthetic a:Lw5/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lw5/w;

    invoke-direct {v0}, Lw5/w;-><init>()V

    sput-object v0, Lw5/w;->a:Lw5/w;

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

    invoke-static {p1, p2}, Lw5/d0;->c(Landroid/content/Context;Ly2/u;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
