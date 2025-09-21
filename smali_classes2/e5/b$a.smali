.class Le5/b$a;
.super Ljava/lang/Object;
.source "DMALogSender.java"

# interfaces
.implements Lw4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le5/b;-><init>(Landroid/content/Context;Lv4/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw4/a<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le5/b;


# direct methods
.method constructor <init>(Le5/b;)V
    .locals 0

    iput-object p1, p0, Le5/b$a;->a:Le5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le5/b$a;->b(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 1
    iget-object p1, p0, Le5/b$a;->a:Le5/b;

    invoke-virtual {p1}, Le5/b;->h()V

    .line 2
    iget-object p0, p0, Le5/b$a;->a:Le5/b;

    invoke-static {p0}, Le5/b;->f(Le5/b;)V

    const/4 p0, 0x0

    return-object p0
.end method
