cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  facial-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: facial-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  progressive-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: progressive-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: facial-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  metabolic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: metabolic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: progressive-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-epilep---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-epilep---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: metabolic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  upper-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: upper-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-epilep---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-artery---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-artery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: upper-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-disord---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-disord---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-artery---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-infantile---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-infantile---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-disord---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-migraine---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-migraine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-infantile---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-sleep---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-sleep---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-migraine---secondary/output
  central-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: central-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-sleep---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-hemiplegia---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-hemiplegia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: central-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-druginduced---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-druginduced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-hemiplegia---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-degeneration---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-degeneration---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-druginduced---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-phantom---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-phantom---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-degeneration---secondary/output
  cerebellar-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: cerebellar-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-phantom---secondary/output
  postprocedural-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: postprocedural-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cerebellar-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-parkinsons---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-parkinsons---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: postprocedural-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-headache---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-headache---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-parkinsons---secondary/output
  cerebrospinal-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: cerebrospinal-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-headache---secondary/output
  neuropathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: neuropathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: cerebrospinal-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-specified---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: neuropathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-subacute---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-subacute---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-specified---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-monoplegia---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-monoplegia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-subacute---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-lesion---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-lesion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-monoplegia---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-inflammatory---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-inflammatory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-lesion---secondary/output
  system---secondary:
    run: system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-inflammatory---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-puncture---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-puncture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: system---secondary/output
  idiopathic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: idiopathic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-puncture---secondary/output
  peripheral-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: peripheral-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: idiopathic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-plexu---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-plexu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: peripheral-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-lacunar---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-lacunar---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-plexu---secondary/output
  multiple-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: multiple-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-lacunar---secondary/output
  primary-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: primary-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: multiple-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  lower-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: lower-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: primary-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  intracranial-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: intracranial-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: lower-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-tetraplegia---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-tetraplegia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: intracranial-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-stroke---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-stroke---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-tetraplegia---secondary/output
  myelopathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: myelopathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-stroke---secondary/output
  epilptic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: epilptic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: myelopathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-alzheimer---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-alzheimer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: epilptic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-neuralgia---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-neuralgia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-alzheimer---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-sclerosis---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-sclerosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-neuralgia---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-benign---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-benign---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-sclerosis---secondary/output
  alcoholic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: alcoholic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-benign---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-dystonia---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-dystonia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: alcoholic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-generalized---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-generalized---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-dystonia---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-movement---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-movement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-generalized---secondary/output
  chronic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: chronic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-movement---secondary/output
  paralytic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: paralytic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: chronic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-compression---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-compression---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: paralytic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-granuloma---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-granuloma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-compression---secondary/output
  familial-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: familial-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-granuloma---secondary/output
  trigeminal-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: trigeminal-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: familial-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  bacterial-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: bacterial-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: trigeminal-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-onset---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-onset---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: bacterial-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-encephalomyelitis---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-encephalomyelitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-onset---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-thrombophlebitis---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-thrombophlebitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-encephalomyelitis---secondary/output
  spastic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: spastic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-thrombophlebitis---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-diplegia---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-diplegia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: spastic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-huntington---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-huntington---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-diplegia---secondary/output
  cerebral-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: cerebral-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-huntington---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-endocrine---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-endocrine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: cerebral-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  viral-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: viral-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-endocrine---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-infect---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-infect---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: viral-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-tremor---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-tremor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-infect---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-ataxia---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-ataxia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-tremor---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-demyelination---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-demyelination---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-ataxia---secondary/output
  popliteal-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: popliteal-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-demyelination---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-affecting---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-affecting---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: popliteal-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-agent---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-agent---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-affecting---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-attacks---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-attacks---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-agent---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-gravis---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-gravis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-attacks---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-hydrocephalus---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-hydrocephalus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-gravis---secondary/output
  lumbosacral-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: lumbosacral-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-hydrocephalus---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-seizure---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-seizure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: lumbosacral-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  posttraumatic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: posttraumatic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-seizure---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-tunnel---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-tunnel---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: posttraumatic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-brain---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-brain---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-tunnel---secondary/output
  autonomic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: autonomic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-brain---secondary/output
  encephalopathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: encephalopathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: autonomic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  neoplastic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: neoplastic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: encephalopathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-flaccid---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-flaccid---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: neoplastic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-classified---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-flaccid---secondary/output
  toxic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: toxic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-classified---secondary/output
  diabetic-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: diabetic-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: toxic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-fluid---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-fluid---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: diabetic-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-sensory---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-sensory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-fluid---secondary/output
  cerebrovascular-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: cerebrovascular-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-sensory---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-chorea---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-chorea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: cerebrovascular-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-sequelae---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-sequelae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-chorea---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-junction---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-junction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-sequelae---secondary/output
  congenital-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: congenital-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-junction---secondary/output
  complex-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: complex-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: congenital-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  grand-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: grand-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: complex-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  myopathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary:
    run: myopathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: grand-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  death-by-diseases-of-the-nervous-system-natural-cause-petit---secondary:
    run: death-by-diseases-of-the-nervous-system-natural-cause-petit---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: myopathy-death-by-diseases-of-the-nervous-system-natural-cause---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-nervous-system-natural-cause-petit---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
