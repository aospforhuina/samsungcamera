.class Lw4/b$a;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Lv4/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw4/b;-><init>(Landroid/app/Application;Lv4/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw4/b;


# direct methods
.method constructor <init>(Lw4/b;)V
    .locals 0

    iput-object p1, p0, Lw4/b$a;->a:Lw4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-object p0, p0, Lw4/b$a;->a:Lw4/b;

    invoke-static {p0}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lk5/d;->g(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
