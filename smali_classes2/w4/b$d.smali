.class Lw4/b$d;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Lb6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw4/b;->n()V
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

    iput-object p1, p0, Lw4/b$d;->a:Lw4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/b$d;->a:Lw4/b;

    invoke-static {v0}, Lw4/b;->c(Lw4/b;)Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lw4/b$d;->a:Lw4/b;

    .line 2
    invoke-static {p0}, Lw4/b;->d(Lw4/b;)Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
