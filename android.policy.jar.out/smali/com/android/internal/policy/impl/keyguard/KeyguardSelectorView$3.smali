.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;
.super Ljava/lang/Object;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const-wide/16 v1, 0x0

    .line 155
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->toggleRingMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateResources()V

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 166
    return-void
.end method
