.class public Lcom/twitter/android/client/WidgetLargeProvider;
.super Landroid/appwidget/AppWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    new-instance v0, Lcom/twitter/android/client/l;

    invoke-direct {v0, p1}, Lcom/twitter/android/client/l;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
